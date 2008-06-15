namespace MWebAsk {
	/// <summary>
	/// 问题状态Question.Situation
	/// </summary>
	public enum QType {
		待解决 = 0,
		过期 = 200,
		已解决 = 255
	}
	/// <summary>
	/// 回复状态 Reply.Situation
	/// </summary>
	public enum AType {
		回复 = 0,
		最佳答案 = 255

	}
}