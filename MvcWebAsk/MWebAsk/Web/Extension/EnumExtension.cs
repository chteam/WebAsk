using System;

namespace MWebAsk {
	static public class EnumExtension {
		static public int ToInt(this QType e) {
			return (int)e;
		}
	}
}