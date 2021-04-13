package com.farben.check.common;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @Classname
 * @Description 通用返回类
 * @Date 2020/11/23 14:18
 * @Author benson
 **/

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ResultVo<T> {
    // 返回状态码
    private Integer code;
    //返回提示信息
    private String msg;

    private T data;

    public  final static ResultVo success() {
        return ResultVo.builder().code(200).msg("成功").build();
    }

    public final static ResultVo fail() {
        return ResultVo.builder().code(500).msg("失败").build();
    }

    public final static ResultVo success(Object data) {
        ResultVo success = ResultVo.success();
        success.setData(data);
        return success;
    }
}
