import os
import shutil
import subprocess

from config import *

from datetime import datetime

def create_archive(directory):
    # Создаем временную папку для архива
    temp_dir = '/tmp'
    current_date = datetime.now().strftime("%Y-%m-%d")
    archive_name = f'dokuwiki_backup_{current_date}.zip'
    archive_path = os.path.join(temp_dir, archive_name)

    # Архивируем папку
    shutil.make_archive(os.path.splitext(archive_path)[0], 'zip', directory)

    return archive_path

def send_to_telegram(archive_path, chat_id, token):
    # Отправляем архив в Telegram с помощью cURL
    curl_command = f'curl -F chat_id={chat_id} -F document=@{archive_path} https://api.telegram.org/bot{token}/sendDocument'
    subprocess.run(curl_command, shell=True)

def main():
    # Путь к папке для архивации
    directory_to_archive = '/software/wiki/dokuwiki'

    # ID чата и токен бота Telegram
    telegram_chat_id = TG_CHAT_ID
    telegram_bot_token = TG_API_TOKEN

    # Создаем архив
    archive_path = create_archive(directory_to_archive)

    # Отправляем архив в Telegram
    send_to_telegram(archive_path, telegram_chat_id, telegram_bot_token)

    # Удаляем временный архив
    os.remove(archive_path)

if __name__ == "__main__":
    main()
