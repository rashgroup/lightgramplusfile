.class public final Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;
.super Ljava/lang/Object;
.source "VerboseLogUtil.java"


# static fields
.field private static volatile enableAllTags:Z

.field private static volatile enabledTags:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areAllTagsEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return v0
.end method

.method public static isTagEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    if-eqz v3, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setEnableAllTags(Z)V
    .locals 0

    sput-boolean p0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return-void
.end method

.method public static varargs setEnabledTags([Ljava/lang/String;)V
    .locals 1

    sput-object p0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return-void
.end method
