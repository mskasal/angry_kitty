enum BashStatus { starting, loading, found, notFound, error }
enum FileStatus { starting, loading, found, notFound, error }
enum InstallerStatus { starting, loading, found, notFound, error, authRequired }

Map<int, BashStatus> bashResultMap = {
  0: BashStatus.found,
  1: BashStatus.notFound,
};

Map<int, BashStatus> fileResultMap = {
  0: BashStatus.found,
  1: BashStatus.notFound,
};

Map<int, InstallerStatus> installerResultMap = {
  0: InstallerStatus.found,
  1: InstallerStatus.notFound,
};
