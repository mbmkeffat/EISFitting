
python EISFittingModelDefinitions.py --no_zarc_inductance --no_inductance --warburg_inception --mode=run_inverse_model --logdir=OnePercentTraining_july2 --num_conv=7 --conv_filters=40 --file_type=eis
python EISFittingModelDefinitions.py --no_zarc_inductance --no_inductance --warburg_inception --mode=finetune --file_types=eis  --logdir=OnePercentTraining_july2 --learning_rate=1e-1
python PlotImpedance.py --output_dir=qc_july2_3zarcs_inception

python EISFittingModelDefinitions.py --no_zarc_inductance --no_inductance --no_warburg_inception --mode=run_inverse_model --logdir=OnePercentTraining_july2 --num_conv=7 --conv_filters=40 --file_type=eis
python EISFittingModelDefinitions.py --no_zarc_inductance --no_inductance --no_warburg_inception --mode=finetune --file_types=eis  --logdir=OnePercentTraining_july2 --learning_rate=1e-1
python PlotImpedance.py --output_dir=qc_july2_3zarcs_no_inception

python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=run_inverse_model --logdir=OnePercentTraining_july2 --num_conv=7 --conv_filters=40 --num_zarcs=2
python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=finetune  --logdir=OnePercentTraining_july2 --learning_rate=1e-1 --num_zarcs=2
python PlotImpedance.py --output_dir=qc_july2_2zarcs_inductance_no_inception




python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=run_inverse_model --logdir=OnePercentTraining_july2 --num_conv=7 --conv_filters=40 --file_type=eis
python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=finetune --file_types=eis  --logdir=OnePercentTraining_july2 --learning_rate=1e-1
python PlotImpedance.py --output_dir=qc_july2_3zarcs_no_inception_inductance


python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=run_inverse_model --logdir=OnePercentTraining_july2 --num_conv=7 --conv_filters=40 --file_type=eis --test_with_train
python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=finetune --file_types=eis  --logdir=OnePercentTraining_july2 --learning_rate=1e-1 --test_with_train
python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=run_inverse_model --logdir=OnePercentTraining_july2 --num_conv=7 --conv_filters=40 --file_type=fra --test_with_train
python EISFittingModelDefinitions.py --zarc_inductance --inductance --no_warburg_inception --mode=finetune --file_types=fra  --logdir=OnePercentTraining_july2 --learning_rate=1e-1 --test_with_train

python PlotImpedance.py --output_dir=qc_july2_3zarcs_no_inception_inductance_test_with_train