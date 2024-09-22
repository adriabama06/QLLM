# Create Docker
```bash
docker build . -t qllm
```

### NOTE: On Windows change ./ to .\ -> -v ./output:/output to .\output:/output

# Use Docker
```bash
docker run --gpus all --rm -v ./output:/output qllm --help
```

# Example
```bash
#  Quantize and Save compressed model, method can be one of [gptq/awq/hqq]
docker run --gpus all --rm -v ./output:/output qllm --model=meta-llama/Llama-2-7b-hf --quant_method=gptq --nsamples=64 --wbits=4 --groupsize=128 --save /output/Llama-2-7b-4bit
docker run --gpus all --rm -v ./output:/output qllm --model=meta-llama/Llama-2-7b-hf --quant_method=awq --dataset=pileval --nsamples=16 --wbits=4 --groupsize=128 --save /output/Llama-2-7b-4bit
docker run --gpus all --rm -v ./output:/output qllm --model=meta-llama/Llama-2-7b-hf --quant_method=hqq --wbits=4 --groupsize=128 --save /output/Llama-2-7b-4bit
```