NUM_DEV=${ND:-"-1"}

ARG_N_EVAL=${N_EVAL:-"-1"}

EVAL=${1:-"test"}
NUM_EVAL_SAM=8
NUM_SAM=10
TEMPR=0.8


main_exp()
{
    OPENAI_API_KEY=${KEY} python run_manual.py --task gsm --num_eval_samples ${NUM_EVAL_SAM} --num_samples ${NUM_SAM} --num_dev ${NUM_DEV}  --run_pred --manual_prompt_id cot --eval_split ${EVAL} --batch_size 2 --temperature ${TEMPR} --style_template cot ${FLAG}
    #OPENAI_API_KEY=${KEY} python run_manual.py --task gsm --num_eval_samples ${NUM_EVAL_SAM} --num_samples ${NUM_SAM} --num_dev ${NUM_DEV}  --run_pred --manual_prompt_id proglm --eval_split ${EVAL} --batch_size 2 --temperature ${TEMPR} --style_template proglm ${FLAG}
    #OPENAI_API_KEY=${KEY} python run_manual.py --task gsm --num_eval_samples ${NUM_EVAL_SAM} --num_samples ${NUM_SAM} --num_dev ${NUM_DEV} --run_pred --manual_prompt_id satlm --eval_split ${EVAL} --batch_size 2 --temperature ${TEMPR} --style_template satlm ${FLAG}
}

main_exp


satcovsolver_exp()
{
    OPENAI_API_KEY=${KEY} python run_manual.py --task gsm --num_dev ${NUM_DEV} --run_pred --manual_prompt_id satcotsolver --eval_split ${EVAL} --batch_size 20 --style_template satcotsolver ${FLAG}
    OPENAI_API_KEY=${KEY} python run_manual.py --task gsm --num_dev ${NUM_DEV} --run_pred --manual_prompt_id satnosolver --eval_split ${EVAL} --batch_size 20 --style_template satcotsolver ${FLAG}
}
