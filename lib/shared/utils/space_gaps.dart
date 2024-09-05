import 'package:gap/gap.dart';

extension type const Space._(double space) implements double {

  const Space(int space) : this._(8.0 * space);
}

const gap8 = Gap(Space(1));
const gap16 = Gap(Space(2));
const gap24 = Gap(Space(3));
const gap32 = Gap(Space(4));
const gap40 = Gap(Space(5));
const gap48 = Gap(Space(6));
const gap56 = Gap(Space(7));
const gap64 = Gap(Space(8));
