.class public Lorg/telegram/ui/tools/g/a/a;
.super Ljava/lang/Object;
.source "bd.java"


# direct methods
.method public static a(II)Ljava/lang/String;
    .locals 4

    new-array v0, p1, [C

    const/16 v1, 0x30

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    new-instance v1, Ljava/text/DecimalFormat;

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    new-instance v1, Lorg/telegram/ui/tools/a/d;

    invoke-direct {v1, v0}, Lorg/telegram/ui/tools/a/d;-><init>(Ljava/util/Calendar;)V

    invoke-virtual {v1}, Lorg/telegram/ui/tools/a/d;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
