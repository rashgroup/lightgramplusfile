.class public Lorg/telegram/messenger/time/FastDateParser;
.super Ljava/lang/Object;
.source "FastDateParser.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/telegram/messenger/time/DateParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$TextStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;,
        Lorg/telegram/messenger/time/FastDateParser$Strategy;
    }
.end annotation


# static fields
.field private static final ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field static final JAPANESE_IMPERIAL:Ljava/util/Locale;

.field private static final LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private static final caches:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/telegram/messenger/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation
.end field

.field private static final formatPattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private final century:I

.field private transient currentFormatField:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private transient nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private transient parsePattern:Ljava/util/regex/Pattern;

.field private final pattern:Ljava/lang/String;

.field private final startYear:I

.field private transient strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

.field private final timeZone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    new-instance v0, Ljava/util/Locale;

    const-string/jumbo v1, "ja"

    const-string/jumbo v2, "JP"

    const-string/jumbo v3, "JP"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    const-string/jumbo v0, "D+|E+|F+|G+|H+|K+|M+|S+|W+|Z+|a+|d+|h+|k+|m+|s+|w+|y+|z+|\'\'|\'[^\']++(\'\'[^\']*+)*+\'|[^\'A-Za-z]++"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/util/concurrent/ConcurrentMap;

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$1;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/time/FastDateParser$1;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$2;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$3;

    invoke-direct {v0, v6}, Lorg/telegram/messenger/time/FastDateParser$3;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$4;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/time/FastDateParser$4;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    invoke-direct {v0, v5}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$NumberStrategy;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/time/FastDateParser;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;Ljava/util/Date;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iput-object p3, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {p2, p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz p4, :cond_0

    invoke-virtual {v1, p4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    :goto_0
    div-int/lit8 v2, v0, 0x64

    mul-int/lit8 v2, v2, 0x64

    iput v2, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    iget v2, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/time/FastDateParser;->startYear:I

    invoke-direct {p0, v1}, Lorg/telegram/messenger/time/FastDateParser;->init(Ljava/util/Calendar;)V

    return-void

    :cond_0
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {p3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x50

    goto :goto_0
.end method

.method static synthetic access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/time/FastDateParser;I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->adjustYear(I)I

    move-result v0

    return v0
.end method

.method private adjustYear(I)I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/time/FastDateParser;->century:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/telegram/messenger/time/FastDateParser;->startYear:I

    if-lt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x64

    goto :goto_0
.end method

.method private static escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 4

    const-string/jumbo v0, "\\Q"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    move v3, v1

    move v1, v0

    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :sswitch_0
    if-eqz p2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v1, v0, :cond_1

    :goto_2
    return-object p0

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_2

    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x45

    if-ne v0, v1, :cond_4

    const-string/jumbo v0, "E\\\\E\\"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x51

    move v1, v2

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "\\E"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static getCache(I)Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "Lorg/telegram/messenger/time/FastDateParser$Strategy;",
            ">;"
        }
    .end annotation

    sget-object v1, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    aput-object v2, v0, p0

    :cond_0
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->caches:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, p0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Calendar;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static getDisplayNames(ILjava/util/Locale;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/FastDateParser;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lorg/telegram/messenger/time/FastDateParser;->getDisplayNameArray(IZLjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/time/FastDateParser;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;
    .locals 3

    invoke-static {p1}, Lorg/telegram/messenger/time/FastDateParser;->getCache(I)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-nez v0, :cond_1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$TimeZoneStrategy;-><init>(Ljava/util/Locale;)V

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-eqz v0, :cond_2

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-direct {v0, p1, p2, v1}, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;-><init>(ILjava/util/Calendar;Ljava/util/Locale;)V

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :sswitch_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/time/FastDateParser$CopyQuotedStrategy;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_WEEK_IN_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v1, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_6
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->NUMBER_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_8
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MILLISECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_9
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_a
    const/16 v0, 0x9

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->DAY_OF_MONTH_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_c
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MODULO_HOUR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_d
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->HOUR_OF_DAY_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_e
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->MINUTE_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_f
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->SECOND_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_10
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->WEEK_OF_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->LITERAL_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :cond_2
    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->ABBREVIATED_YEAR_STRATEGY:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :sswitch_12
    const/16 v0, 0xf

    invoke-direct {p0, v0, p2}, Lorg/telegram/messenger/time/FastDateParser;->getLocaleSpecificStrategy(ILjava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x27 -> :sswitch_0
        0x44 -> :sswitch_1
        0x45 -> :sswitch_2
        0x46 -> :sswitch_3
        0x47 -> :sswitch_4
        0x48 -> :sswitch_5
        0x4b -> :sswitch_6
        0x4d -> :sswitch_7
        0x53 -> :sswitch_8
        0x57 -> :sswitch_9
        0x5a -> :sswitch_12
        0x61 -> :sswitch_a
        0x64 -> :sswitch_b
        0x68 -> :sswitch_c
        0x6b -> :sswitch_d
        0x6d -> :sswitch_e
        0x73 -> :sswitch_f
        0x77 -> :sswitch_10
        0x79 -> :sswitch_11
        0x7a -> :sswitch_12
    .end sparse-switch
.end method

.method private init(Ljava/util/Calendar;)V
    .locals 7

    const/4 v6, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lorg/telegram/messenger/time/FastDateParser;->formatPattern:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal pattern character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v4

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionEnd()I

    move-result v5

    if-eq v4, v5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to parse \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" ; gave up at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->regionStart()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, p1}, Lorg/telegram/messenger/time/FastDateParser;->getStrategy(Ljava/lang/String;Ljava/util/Calendar;)Lorg/telegram/messenger/time/FastDateParser$Strategy;

    move-result-object v5

    iput-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iput-object v4, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iput-object v6, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/time/FastDateParser$Strategy;

    iput-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    aget-object v1, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDateParser;->init(Ljava/util/Calendar;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/telegram/messenger/time/FastDateParser;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lorg/telegram/messenger/time/FastDateParser;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    iget-object v2, p1, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getFieldWidth()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->currentFormatField:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method getParsePattern()Ljava/util/regex/Pattern;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->hashCode()I

    move-result v2

    mul-int/lit8 v2, v2, 0xd

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    return v0
.end method

.method isNextNumber()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->nextStrategy:Lorg/telegram/messenger/time/FastDateParser$Strategy;

    invoke-virtual {v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    sget-object v1, Lorg/telegram/messenger/time/FastDateParser;->JAPANESE_IMPERIAL:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " locale does not support dates before 1868 AD)\nUnparseable date: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unparseable date: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" does not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 6

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->parsePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/time/FastDateParser;->strategies:[Lorg/telegram/messenger/time/FastDateParser$Strategy;

    add-int/lit8 v1, v0, 0x1

    aget-object v0, v5, v0

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p0, v4, v5}, Lorg/telegram/messenger/time/FastDateParser$Strategy;->setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/time/FastDateParser;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FastDateParser["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
