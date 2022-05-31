package com.ldh.util;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 获取当前时间
 */
public class DataUtil {
    public static String getTime()
    {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
    }
}
