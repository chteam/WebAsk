using System;

namespace MWebAsk {
	static public class EnumExtension {
		static public byte ToByte(this QType e) {
			return (byte)e;
		}

		static public byte ToByte(this AType e) {
			return (byte)e;
		}
	}
}