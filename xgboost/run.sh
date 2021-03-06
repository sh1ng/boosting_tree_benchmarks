xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" eval[test]="../data/higgs.test" objective="binary:logistic" eval_metric=auc 2>&1 | tee xgboost_higgs.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/msltr.train" eval[test]="../data/msltr.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_msltr.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_msltr_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" eval[test]="../data/yahoo.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_yahoo.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_yahoo_speed.log

xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/higgs.train" eval[test]="../data/higgs.test" objective="binary:logistic" eval_metric=auc 2>&1 | tee xgboost_approx_higgs.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_approx_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/msltr.train" eval[test]="../data/msltr.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_approx_msltr.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_approx_msltr_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/yahoo.train" eval[test]="../data/yahoo.test" objective="rank:ndcg" eval_metric=ndcg@1 eval_metric=ndcg@3 eval_metric=ndcg@5 eval_metric=ndcg@10 2>&1 | tee xgboost_approx_yahoo.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_approx_yahoo_speed.log


