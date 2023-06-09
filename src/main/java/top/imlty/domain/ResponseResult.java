package top.imlty.domain;

import org.apache.ibatis.type.Alias;

/**
 * 响应结果封装对象
 * */
public class ResponseResult {

    //表示是否相应成功
    private Boolean success;
    //状态码
    private Integer state;
    //相应信息
    private String message;
    //具体的数据信息
    private Object content;

    public ResponseResult() {
    }

    public ResponseResult(Boolean success, Integer state, String message, Object content) {
        this.success = success;
        this.state = state;
        this.message = message;
        this.content = content;
    }

    public Boolean getSuccess() {
        return success;
    }

    public void setSuccess(Boolean success) {
        this.success = success;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Object getContent() {
        return content;
    }

    public void setContent(Object content) {
        this.content = content;
    }
}
