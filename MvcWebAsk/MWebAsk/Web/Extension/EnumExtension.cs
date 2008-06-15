using System;

namespace MWebAsk {
	/// <summary>
	/// 问题 和回复的扩展方法,将Enum转为byte
	/// </summary>
	static public class EnumExtension {
		static public byte ToByte(this QType e) {
			return (byte)e;
		}

		static public byte ToByte(this AType e) {
			return (byte)e;
		}
	}
}