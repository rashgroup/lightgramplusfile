.class public Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;
.super Ljava/lang/Object;
.source "HapticFeedbackController.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/database/ContentObserver;

.field private c:Landroid/os/Vibrator;

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a:Landroid/content/Context;

    new-instance v0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b$1;-><init>(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;Landroid/os/Handler;)V

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->d:Z

    return p1
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c:Landroid/os/Vibrator;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->d:Z

    const-string/jumbo v0, "haptic_feedback_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c:Landroid/os/Vibrator;

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->b:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public c()V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->e:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->c:Landroid/os/Vibrator;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    iput-wide v0, p0, Lorg/telegram/ui/tools/persianmaterialdatetimepicker/b;->e:J

    :cond_0
    return-void
.end method
