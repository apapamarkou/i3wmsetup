#!/usr/bin/env bash

current_mode=""

# Περιμένουμε μέχρι το i3 να είναι πλήρως έτοιμο (ώστε να μη διαβάσει σκουπίδια)
until i3-msg -t get_binding_modes &>/dev/null; do
    sleep 0.2
done

# Μικρό delay για ασφάλεια
sleep 0.3

# Ξεκινάμε πάντα “καθαροί”
echo ""
current_mode=""

# Συνάρτηση εκτύπωσης
print_mode() {
    mode=$(i3-msg -t get_binding_modes | jq -r '.[0] // ""')
    if [ "$mode" = "null" ] || [ -z "$mode" ]; then
        mode=""
    fi

    if [ "$mode" != "$current_mode" ]; then
        echo "$mode"
        current_mode="$mode"
    fi
}

# Infinite loop – κρατάει ζωντανό το subscription
while true; do
    i3-msg -t subscribe '["mode"]' | jq -r --unbuffered '.change' | while read -r change; do
        if [ "$change" = "default" ]; then
            echo ""
            current_mode=""
        else
            echo "$change"
            current_mode="$change"
        fi
    done
    sleep 0.3
done
