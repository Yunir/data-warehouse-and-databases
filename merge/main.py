from merge.mongo_to_oracle import MongoToOracle
from merge.mysql_to_oracle import MysqlToOracle
from merge.postgres_to_oracle import PostgresToOracle


if __name__ == '__main__':
    PostgresToOracle().merge()
    MysqlToOracle().merge()
    MongoToOracle().merge()
