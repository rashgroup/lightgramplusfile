.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;
.super Ljava/lang/Object;
.source "PersianCalendarUtils.java"


# direct methods
.method public static a(DD)J
    .locals 2

    div-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    mul-double/2addr v0, p2

    sub-double v0, p0, v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public static a(J)J
    .locals 10

    const-wide/16 v0, 0x1db

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(JII)J

    move-result-wide v0

    sub-long v2, p0, v0

    long-to-double v0, v2

    const-wide v4, 0x412f6ebe00000000L    # 1029983.0

    invoke-static {v0, v1, v4, v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(DD)J

    move-result-wide v0

    const-wide/32 v4, 0xfb75e

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x40a6000000000000L    # 2816.0

    long-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v4, 0x412f795200000000L    # 1031337.0

    add-double/2addr v0, v4

    const-wide v4, 0x412f635400000000L    # 1028522.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-long v0, v0

    :goto_0
    const-wide/16 v4, 0x1da

    const-wide/16 v6, 0xb04

    long-to-double v2, v2

    const-wide v8, 0x412f6ebe00000000L    # 1029983.0

    div-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    add-long/2addr v2, v0

    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(JII)J

    move-result-wide v4

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xba

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    const-wide/16 v4, 0x6

    sub-long/2addr v0, v4

    long-to-double v0, v0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    :goto_1
    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v2, v3, v0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(JII)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    sub-long v4, p0, v4

    long-to-int v1, v4

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    shl-int/lit8 v0, v0, 0x8

    int-to-long v4, v0

    or-long/2addr v2, v4

    int-to-long v0, v1

    or-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xb04

    goto :goto_0

    :cond_1
    long-to-double v0, v0

    const-wide/high16 v4, 0x403f000000000000L    # 31.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    goto :goto_1
.end method

.method public static a(JII)J
    .locals 10

    const-wide v8, 0x40a6080000000000L    # 2820.0

    const-wide/16 v6, 0x1da

    const-wide/16 v0, 0x16d

    sub-long v2, p0, v6

    long-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(DD)J

    move-result-wide v2

    add-long/2addr v2, v6

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2aa

    sub-long v4, p0, v6

    long-to-double v4, v4

    invoke-static {v4, v5, v8, v9}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(DD)J

    move-result-wide v4

    add-long/2addr v4, v6

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x6e

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide/high16 v4, 0x40a6000000000000L    # 2816.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x1dbaa0

    add-long/2addr v0, v2

    const-wide/32 v2, 0xfb75f

    sub-long v4, p0, v6

    long-to-double v4, v4

    div-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-long v4, v4

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    const/4 v0, 0x7

    if-ge p2, v0, :cond_0

    mul-int/lit8 v0, p2, 0x1f

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    mul-int/lit8 v0, p2, 0x1e

    add-int/lit8 v0, v0, 0x6

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 8

    const-wide/16 v6, 0x1da

    const-wide/high16 v0, 0x4043000000000000L    # 38.0

    int-to-long v2, p0

    sub-long/2addr v2, v6

    long-to-double v2, v2

    const-wide v4, 0x40a6080000000000L    # 2820.0

    invoke-static {v2, v3, v4, v5}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(DD)J

    move-result-wide v2

    add-long/2addr v2, v6

    long-to-double v2, v2

    add-double/2addr v0, v2

    const-wide v2, 0x4085500000000000L    # 682.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x40a6000000000000L    # 2816.0

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/a/d;->a(DD)J

    move-result-wide v0

    const-wide/16 v2, 0x2aa

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
