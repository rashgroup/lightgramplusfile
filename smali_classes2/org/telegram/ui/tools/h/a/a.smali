.class public Lorg/telegram/ui/tools/h/a/a;
.super Ljava/lang/Object;
.source "ShamsiCalendarChat.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseValueOf"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u0634\u0646\u0628\u0647"

    aput-object v2, v0, v1

    const-string/jumbo v1, "\u06cc\u06a9\u0634\u0646\u0628\u0647"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u062f\u0648\u0634\u0646\u0628\u0647"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u0633\u0647 \u0634\u0646\u0628\u0647"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0686\u0647\u0627\u0631\u0634\u0646\u0628\u0647"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u067e\u0646\u062c \u0634\u0646\u0628\u0647"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "\u062c\u0645\u0639\u0647"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u0641\u0631\u0648\u0631\u062f\u06cc\u0646"

    aput-object v2, v0, v1

    const-string/jumbo v1, "\u0627\u0631\u062f\u06cc\u0628\u0647\u0634\u062a"

    aput-object v1, v0, v4

    const-string/jumbo v1, "\u062e\u0631\u062f\u0627\u062f"

    aput-object v1, v0, v5

    const-string/jumbo v1, "\u062a\u06cc\u0631"

    aput-object v1, v0, v6

    const-string/jumbo v1, "\u0645\u0631\u062f\u0627\u062f"

    aput-object v1, v0, v7

    const-string/jumbo v1, "\u0634\u0647\u0631\u06cc\u0648\u0631"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "\u0645\u0647\u0631"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "\u0622\u0628\u0627\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "\u0622\u0630\u0631"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "\u062f\u06cc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "\u0628\u0647\u0645\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "\u0627\u0633\u0641\u0646\u062f"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/tools/h/a/a;->a:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "Farvardin"

    aput-object v2, v0, v1

    const-string/jumbo v1, "Ordibehesht"

    aput-object v1, v0, v4

    const-string/jumbo v1, "Khordad"

    aput-object v1, v0, v5

    const-string/jumbo v1, "Tir"

    aput-object v1, v0, v6

    const-string/jumbo v1, "Mordad"

    aput-object v1, v0, v7

    const-string/jumbo v1, "Shahrivar"

    aput-object v1, v0, v8

    const/4 v1, 0x6

    const-string/jumbo v2, "Mehr"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Aban"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "Azar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Dey"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "Bahman"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "Esfand"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/ui/tools/h/a/a;->b:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v8}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    sget-object v2, Lorg/telegram/ui/tools/h/a/a;->c:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->a:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;)Lorg/telegram/ui/tools/h/a/b;
    .locals 12

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    const-string/jumbo v3, "01/01/1900"

    invoke-direct {v2, v3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    const-wide/16 v4, 0x3c

    rem-long v4, v2, v4

    long-to-int v6, v4

    const-wide/16 v4, 0x3c

    div-long/2addr v2, v4

    const-wide/16 v4, 0x3c

    rem-long v4, v2, v4

    long-to-int v5, v4

    const-wide/16 v8, 0x3c

    div-long/2addr v2, v8

    const-wide/16 v8, 0x18

    rem-long/2addr v2, v8

    long-to-int v4, v2

    const-wide/32 v2, 0x5265c00

    div-long v8, v0, v2

    const-wide/16 v0, 0x4e

    cmp-long v0, v8, v0

    if-gtz v0, :cond_1

    const/16 v1, 0x4fe

    const-wide/16 v2, 0xa

    add-long/2addr v2, v8

    const-wide/16 v10, 0x1e

    div-long/2addr v2, v10

    const-wide/16 v10, 0xa

    add-long/2addr v2, v10

    long-to-int v0, v2

    int-to-short v2, v0

    const-wide/16 v10, 0xa

    add-long/2addr v8, v10

    const-wide/16 v10, 0x1e

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v0, v8

    int-to-short v3, v0

    :goto_1
    new-instance v0, Lorg/telegram/ui/tools/h/a/b;

    invoke-direct/range {v0 .. v6}, Lorg/telegram/ui/tools/h/a/b;-><init>(IIIIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x4e

    sub-long v0, v8, v0

    const/16 v2, 0x4ff

    :goto_2
    add-int/lit8 v3, v2, 0xb

    int-to-long v8, v3

    const-wide/16 v10, 0x21

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x20

    cmp-long v3, v8, v10

    if-eqz v3, :cond_2

    const-wide/16 v10, 0x4

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    :cond_2
    const/4 v3, 0x0

    :goto_3
    add-int/lit16 v7, v3, 0x16d

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gtz v7, :cond_4

    const-wide/16 v8, 0xba

    cmp-long v3, v0, v8

    if-gtz v3, :cond_5

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    const-wide/16 v10, 0x1f

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v3, v8

    int-to-short v7, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x1f

    rem-long/2addr v0, v8

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    long-to-int v0, v0

    int-to-short v3, v0

    move v1, v2

    move v2, v7

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit16 v3, v3, 0x16d

    int-to-long v8, v3

    sub-long/2addr v0, v8

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_2

    :cond_5
    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    const-wide/16 v10, 0xba

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1e

    div-long/2addr v8, v10

    const-wide/16 v10, 0x7

    add-long/2addr v8, v10

    long-to-int v3, v8

    int-to-short v7, v3

    const-wide/16 v8, 0x1

    sub-long/2addr v0, v8

    const-wide/16 v8, 0xba

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x1e

    rem-long/2addr v0, v8

    const-wide/16 v8, 0x1

    add-long/2addr v0, v8

    long-to-int v0, v0

    int-to-short v3, v0

    move v1, v2

    move v2, v7

    goto :goto_1
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    :cond_0
    sget-object v0, Lorg/telegram/ui/tools/h/a/a;->b:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
