.class public final Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;
.super Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;
.source "TxxxFrame.java"


# static fields
.field public static final ID:Ljava/lang/String; = "TXXX"


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "TXXX"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;->description:Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/TxxxFrame;->value:Ljava/lang/String;

    return-void
.end method
