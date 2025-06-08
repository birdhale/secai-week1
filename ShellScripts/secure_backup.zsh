#!/bin/zsh

# --- Setup ---
DATA_CORE="${PWD}/data_core"
SECURE_VAULT="${PWD}/secure_vault"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")
LOG_FILE="${PWD}/hack_log_${TIMESTAMP}.txt"

echo "--- Initiating Data Extraction ---" | tee -a "$LOG_FILE"
echo "Timestamp: $TIMESTAMP" | tee -a "$LOG_FILE"
echo "Source: $DATA_CORE" | tee -a "$LOG_FILE"
echo "Vault: $SECURE_VAULT" | tee -a "$LOG_FILE"
echo "" | tee -a "$LOG_FILE"

if [[ ! -d "$DATA_CORE" ]]; then
    echo "ERROR: Source $DATA_CORE not found!" | tee -a "$LOG_FILE"
    exit 1
fi

if [[ ! -d "$SECURE_VAULT" ]]; then
    echo "INFO: Creating vault $SECURE_VAULT..." | tee -a "$LOG_FILE"
    mkdir -p "$SECURE_VAULT"
    if [[ $? -ne 0 ]]; then
        echo "ERROR: Failed to create $SECURE_VAULT." | tee -a "$LOG_FILE"
        exit 1
    fi
fi

echo "Executing data transfer..." | tee -a "$LOG_FILE"
rsync -avh --progress --delete "$DATA_CORE/" "$SECURE_VAULT/" >> "$LOG_FILE" 2>&1

if [[ $? -eq 0 ]]; then
    echo "Data secured successfully!" | tee -a "$LOG_FILE"
    echo "Log stored at: $LOG_FILE"
else
    echo "ERROR: Data transfer failed. Check log: $LOG_FILE" | tee -a "$LOG_FILE"
    exit 1
fi

echo "--- Extraction Complete ---" | tee -a "$LOG_FILE"
exit 
