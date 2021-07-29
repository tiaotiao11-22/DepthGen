 ### Usage

1) Place one or more input images in the folder `input`.

2) Run the model:

    ```shell
    python run.py
    ```

    Or run the small model:

    ```shell
    python run.py --model_weights model-small-70d6b9c8.pt --model_type small
    ```

3) The resulting inverse depth maps are written to the `output` folder.