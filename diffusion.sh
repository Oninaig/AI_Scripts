#start stable diffusion
#set GPU to use the second one (comment lines 3-5 out if you only have 1 GPU)
echo "CUDA_VISIBLE_DEVICES: $CUDA_VISIBLE_DEVICES"
export CUDA_VISIBLE_DEVICES=1
echo "CUDA_VISIBLE_DEVICES: $CUDA_VISIBLE_DEVICES"
screen -dmS diffusion sh -c 'cd ~/llm/stable-diffusion/stable-diffusion-webui/ && ./webui.sh --skip-version-check --listen --xformers --api --enable-insecure-extension-access --port 7860; exec bash'

