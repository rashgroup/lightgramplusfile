.class public Lorg/telegram/ui/tools/a/d;
.super Ljava/lang/Object;
.source "SolarCalendar.java"


# instance fields
.field private a:Ljava/util/Calendar;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Lorg/telegram/ui/tools/a/d;->f()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    invoke-direct {p0}, Lorg/telegram/ui/tools/a/d;->f()V

    return-void
.end method

.method private f()V
    .locals 10

    const/16 v0, 0x4f

    const/16 v9, 0x1f

    const/16 v6, 0xc

    const/4 v8, 0x1

    const/16 v7, 0x1e

    iget-object v1, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/telegram/ui/tools/a/d;->d:I

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    rem-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_4

    add-int/lit8 v2, v2, -0x1

    aget v2, v4, v2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    if-le v2, v0, :cond_1

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    add-int/lit8 v0, v0, -0x4f

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    const/16 v2, 0xba

    if-gt v0, v2, :cond_0

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1f

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    :goto_0
    add-int/lit16 v0, v1, -0x26d

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->e:I

    :goto_1
    return-void

    :pswitch_0
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iput v9, p0, Lorg/telegram/ui/tools/a/d;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    add-int/lit16 v0, v0, -0xba

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    packed-switch v0, :pswitch_data_1

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    :goto_2
    add-int/lit16 v0, v1, -0x26d

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->e:I

    goto :goto_1

    :pswitch_1
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iput v7, p0, Lorg/telegram/ui/tools/a/d;->b:I

    goto :goto_2

    :cond_1
    const/16 v0, 0x7cc

    if-le v1, v0, :cond_2

    rem-int/lit8 v0, v1, 0x4

    if-eq v0, v8, :cond_3

    :cond_2
    const/16 v0, 0xa

    :goto_3
    iget v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    packed-switch v0, :pswitch_data_2

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    :goto_4
    add-int/lit16 v0, v1, -0x26e

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->e:I

    goto :goto_1

    :cond_3
    const/16 v0, 0xb

    goto :goto_3

    :pswitch_2
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iput v7, p0, Lorg/telegram/ui/tools/a/d;->b:I

    goto :goto_4

    :cond_4
    add-int/lit8 v2, v2, -0x1

    aget v2, v5, v2

    add-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    const/16 v2, 0x7cc

    if-lt v1, v2, :cond_5

    :goto_5
    iget v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    if-le v2, v0, :cond_7

    iget v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    sub-int v0, v2, v0

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    const/16 v2, 0xba

    if-gt v0, v2, :cond_6

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1f

    packed-switch v0, :pswitch_data_3

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    :goto_6
    add-int/lit16 v0, v1, -0x26d

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->e:I

    goto/16 :goto_1

    :cond_5
    const/16 v0, 0x50

    goto :goto_5

    :pswitch_3
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iput v9, p0, Lorg/telegram/ui/tools/a/d;->b:I

    goto :goto_6

    :cond_6
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    add-int/lit16 v0, v0, -0xba

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    packed-switch v0, :pswitch_data_4

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    :goto_7
    add-int/lit16 v0, v1, -0x26d

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->e:I

    goto/16 :goto_1

    :pswitch_4
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iput v7, p0, Lorg/telegram/ui/tools/a/d;->b:I

    goto :goto_7

    :cond_7
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    packed-switch v0, :pswitch_data_5

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    rem-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    :goto_8
    add-int/lit16 v0, v1, -0x26e

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->e:I

    goto/16 :goto_1

    :pswitch_5
    iget v0, p0, Lorg/telegram/ui/tools/a/d;->b:I

    div-int/lit8 v0, v0, 0x1e

    add-int/lit8 v0, v0, 0x9

    iput v0, p0, Lorg/telegram/ui/tools/a/d;->c:I

    iput v7, p0, Lorg/telegram/ui/tools/a/d;->b:I

    goto :goto_8

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget v1, p0, Lorg/telegram/ui/tools/a/d;->c:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "\u0641\u0631\u0648\u0631\u062f\u064a\u0646"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "\u0627\u0631\u062f\u064a\u0628\u0647\u0634\u062a"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "\u062e\u0631\u062f\u0627\u062f"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "\u062a\u064a\u0631"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "\u0645\u0631\u062f\u0627\u062f"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "\u0634\u0647\u0631\u064a\u0648\u0631"

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "\u0645\u0647\u0631"

    goto :goto_0

    :pswitch_7
    const-string/jumbo v0, "\u0622\u0628\u0627\u0646"

    goto :goto_0

    :pswitch_8
    const-string/jumbo v0, "\u0622\u0630\u0631"

    goto :goto_0

    :pswitch_9
    const-string/jumbo v0, "\u062f\u064a"

    goto :goto_0

    :pswitch_a
    const-string/jumbo v0, "\u0628\u0647\u0645\u0646"

    goto :goto_0

    :pswitch_b
    const-string/jumbo v0, "\u0627\u0633\u0641\u0646\u062f"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/ui/tools/a/d;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/tools/a/d;->e:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Saat"

    const v3, 0x7f08078c

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a/d;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/ui/tools/a/d;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/telegram/ui/tools/a/d;->e:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/tools/a/d;->c:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/ui/tools/a/d;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "mainconfig"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "enable24HourFormat"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    iget-object v0, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/tools/a/d;->a:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v0, 0xa

    if-ge v1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/ui/tools/a/d;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
