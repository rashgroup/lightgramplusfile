.class final Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;
.super Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer2/util/ParsableByteArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer2/util/ParsableByteArray;

    return-void
.end method
