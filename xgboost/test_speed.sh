xgboost/xgboost xgboost.conf tree_method=exact data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_msltr_speed.log
xgboost/xgboost xgboost.conf tree_method=exact data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_yahoo_speed.log

xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/higgs.train" objective="binary:logistic" 2>&1 | tee xgboost_approx_higgs_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/msltr.train" objective="rank:ndcg" 2>&1 | tee xgboost_approx_msltr_speed.log
xgboost/xgboost xgboost.conf tree_method=approx sketch_eps=0.004 data="../data/yahoo.train" objective="rank:ndcg" 2>&1 | tee xgboost_approx_yahoo_speed.log


