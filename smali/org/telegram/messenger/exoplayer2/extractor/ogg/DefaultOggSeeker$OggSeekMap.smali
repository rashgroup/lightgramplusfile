.class Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;
.super Ljava/lang/Object;
.source "DefaultOggSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer2/extractor/SeekMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OggSeekMap"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;-><init>(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)V

    return-void
.end method


# virtual methods
.method public getDurationUs()J
    .locals 4

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->totalGranules:J
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$500(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->convertGranuleToTime(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 9

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # setter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->queriedGranule:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$102(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;J)J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->streamReader:Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$300(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/StreamReader;->convertTimeToGranule(J)J

    move-result-wide v2

    # setter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->queriedGranule:J
    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$102(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;J)J

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->startPosition:J
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$200(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker$OggSeekMap;->this$0:Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;

    # getter for: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->queriedGranule:J
    invoke-static {v0}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$100(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    # invokes: Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->getEstimatedPosition(JJJ)J
    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;->access$400(Lorg/telegram/messenger/exoplayer2/extractor/ogg/DefaultOggSeeker;JJJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method public isSeekable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
