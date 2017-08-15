.class public Lorg/telegram/ui/tools/d/b/b/c;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static a:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/tools/d/b/b/c;->a:Landroid/os/Vibrator;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/c;->a:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    sput-object v0, Lorg/telegram/ui/tools/d/b/b/c;->a:Landroid/os/Vibrator;

    :cond_0
    invoke-static {}, Lorg/telegram/ui/tools/d/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/c;->a:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    sget-object v0, Lorg/telegram/ui/tools/d/b/b/c;->a:Landroid/os/Vibrator;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_1
    return-void
.end method

.method public static a(I)Z
    .locals 12

    const/4 v0, 0x0

    const-wide v10, 0x408f400000000000L    # 1000.0

    const-wide v8, 0x3fcf0014f8b588e3L    # 0.24219

    const-wide v2, 0x3f9999999999999aL    # 0.025

    const/16 v1, 0x10a

    if-lez p0, :cond_1

    add-int/lit8 v4, p0, 0x26

    rem-int/lit16 v4, v4, 0xb04

    int-to-double v4, v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v2

    add-int/lit8 v6, p0, 0x27

    rem-int/lit16 v6, v6, 0xb04

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    :goto_0
    double-to-int v6, v4

    int-to-double v6, v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v10

    double-to-int v4, v4

    double-to-int v5, v2

    int-to-double v6, v5

    sub-double/2addr v2, v6

    mul-double/2addr v2, v10

    double-to-int v2, v2

    if-gt v4, v1, :cond_0

    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-gez p0, :cond_0

    add-int/lit8 v4, p0, 0x27

    rem-int/lit16 v4, v4, 0xb04

    int-to-double v4, v4

    mul-double/2addr v4, v8

    add-double/2addr v4, v2

    add-int/lit8 v6, p0, 0x28

    rem-int/lit16 v6, v6, 0xb04

    int-to-double v6, v6

    mul-double/2addr v6, v8

    add-double/2addr v2, v6

    goto :goto_0
.end method
