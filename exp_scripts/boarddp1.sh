EVAL=${1:-"test"}

NUM_DEV=${ND:-"-1"}
NUM_EVAL_SAM=1
NUM_SAM=1
TEMPR=0.0

main_exp()
{
    # cot
     OPENAI_API_KEY=${KEY} python run_manual.py --task boardmaindp1 --num_eval_samples ${NUM_EVAL_SAM} --num_samples ${NUM_SAM} --run_pred --batch_size 5 --temperature ${TEMPR} --style_template cot --manual_prompt_id cot --num_dev ${NUM_DEV} --do_impose ${FLAG}
    # satlm
    OPENAI_API_KEY=${KEY} python run_manual.py --task boardmaindp1 --num_eval_samples ${NUM_EVAL_SAM} --num_samples ${NUM_SAM} --run_pred --batch_size 5 --temperature ${TEMPR} --style_template satlm --manual_prompt_id satlm --num_dev ${NUM_DEV} --do_impose ${FLAG}
}

main_exp
