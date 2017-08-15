.class public final Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;
.super Ljava/lang/Object;
.source "TtmlSubtitle.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/Subtitle;


# instance fields
.field private final eventTimesUs:[J

.field private globalStyles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/TtmlStyle;",
            ">;"
        }
    .end annotation
.end field

.field private final regionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/TtmlStyle;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/ttml/TtmlRegion;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->root:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->regionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;->getEventTimesUs()[J

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    return-void
.end method


# virtual methods
.method public getCues(J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/exoplayer/text/Cue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventTime(I)J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getEventTimeCount()I
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    return v0
.end method

.method getGlobalStyles()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/exoplayer/text/TtmlStyle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->globalStyles:Ljava/util/Map;

    return-object v0
.end method

.method public getLastEventTime()J
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    goto :goto_0
.end method

.method public getNextEventTimeIndex(J)I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    invoke-static {v0, p1, p2, v1, v1}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchCeil([JJZZ)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->eventTimesUs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getRoot()Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/text/TtmlSubtitle;->root:Lorg/telegram/messenger/exoplayer/text/ttml/TtmlNode;

    return-object v0
.end method
