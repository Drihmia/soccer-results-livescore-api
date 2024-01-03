# Soccer Results with livescore-api

This Bash script utilizes the `livescore_api` module to fetch and display soccer match results based on the desired country. The script is designed with simplicity in mind, making it accessible for users with little to no coding experience. It handles the installation of necessary dependencies and creates a Python script that interacts with the `livescore_api` module.

## Features

- **Easy Installation:** Installs or upgrades the `livescore_api` module using `pip3`.
- **User-Friendly:** Creates a Python script dynamically, allowing users to input a country and retrieve soccer match results without the need for coding knowledge.
- **Convenient Options:** Option to print a list of available countries.
- **Automatic Cleanup:** Removes the generated Python script (`soccer_results.py`) after execution.

## Installation

No worries. No installation is needed.

## Usage

1. **Clone the repository and navigate into it:**

    ```bash
    git clone https://github.com/Drihmia/soccer-results-livescore-api.git
    ```
    ```bash
    cd soccer-results-livescore-api
    ```

2. **Run the script:**

    ```bash
    ./soccer_results.sh
    ```

3. **Follow the prompts to enter the country you want to search for.**

4. **View the soccer match results for the specified country.**

If the `livescore_api` module is not installed, the script will install it automatically.

### Additional Options

- **User Guidance:** If the country is not found, you can choose to print the list of available countries.
- **Wait Time:** The script waits for 3 seconds after installation to allow users to read the message about the already installed `livescore_api` module.

## Script Cleanup

The script automatically removes the generated Python script (`soccer_results.py`) after execution.

Feel free to customize the script or contribute to the project!

## Contributing

If you'd like to contribute to the project, please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/Drihmia/soccer-results-livescore-api/blob/main/License) file for details.

