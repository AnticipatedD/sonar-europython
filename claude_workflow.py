#!/usr/bin/env python3
import os
import subprocess
import sys

# Define the dataset of commands from your cheatsheet
CLAUDE_COMMANDS = {
    "1": {"cmd": "/memory", "desc": "Save important information."},
    "2": {"cmd": "/context", "desc": "View or manage current context."},
    "3": {"cmd": "/compact", "desc": "Summarize long conversations."},
    "4": {"cmd": "/clear", "desc": "Clear context when needed."},
    "5": {"cmd": "/resume", "desc": "Continue a previous session."},
    "6": {"cmd": "/debug", "desc": "Find and fix issues in your code."},
    "7": {"cmd": "/review", "desc": "Review your code for improvements."},
    "8": {"cmd": "/security", "desc": "Check for security vulnerabilities."},
    "9": {"cmd": "/diff", "desc": "Compare code changes."},
    "10": {"cmd": "/help", "desc": "Get help with commands."},
}

WORKFLOW_STEPS = ["Set up", "Build", "Review", "Debug", "Test", "Ship"]

def copy_to_clipboard(text):
    """Copies text to the system clipboard across major OS platforms."""
    try:
        if sys.platform == "win32":
            subprocess.run("clip", input=text, text=True, check=True)
        elif sys.platform == "darwin":
            subprocess.run("pbcopy", input=text, text=True, check=True)
        else:
            # Linux (requires xclip)
            subprocess.run(["xclip", "-selection", "clipboard"], input=text, text=True, check=True)
        return True
    except (subprocess.CalledProcessError, FileNotFoundError):
        return False

def clear_screen():
    os.system('cls' if os.name == 'nt' else 'clear')

def main():
    while True:
        clear_screen()
        print("=" * 60)
        print("       CLAUDE CODE INTERACTIVE WORKFLOW COMPANION       ")
        print("=" * 60)
        
        # Display Recommended Workflow
        print(f"Recommended Flow: {' -> '.join(WORKFLOW_STEPS)}")
        print("-" * 60)
        
        # Display Menu Options
        print("Context & Workflow:")
        for idx in ["1", "2", "3", "4", "5"]:
            item = CLAUDE_COMMANDS[idx]
            print(f"  [{idx}] {item['cmd']:<10} - {item['desc']}")
            
        print("\nDebug & Utilities:")
        for idx in ["6", "7", "8", "9", "10"]:
            item = CLAUDE_COMMANDS[idx]
            print(f"  [{idx}] {item['cmd']:<10} - {item['desc']}")
            
        print("-" * 60)
        print("  [E] Exit Menu")
        print("=" * 60)
        
        choice = input("Select an option to copy the command: ").strip().lower()
        
        if choice == 'e':
            print("\nHappy coding! Exiting...")
            break
            
        if choice in CLAUDE_COMMANDS:
            selected_cmd = CLAUDE_COMMANDS[choice]["cmd"]
            selected_desc = CLAUDE_COMMANDS[choice]["desc"]
            
            if copy_to_clipboard(selected_cmd):
                input(f"\n[Success] Copied '{selected_cmd}' to your clipboard!\n({selected_desc})\n\nPress Enter to continue...")
            else:
                input(f"\n[Command]: {selected_cmd}\n[Desc]: {selected_desc}\n(Clipboard copy failed. Please copy manually.)\n\nPress Enter to continue...")
        else:
            input("\n[Error] Invalid choice. Press Enter to retry...")

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        print("\n\nExiting...")
