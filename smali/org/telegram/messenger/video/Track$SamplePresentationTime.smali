.class Lorg/telegram/messenger/video/Track$SamplePresentationTime;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/video/Track;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplePresentationTime"
.end annotation


# instance fields
.field private dt:J

.field private index:I

.field private presentationTime:J

.field final synthetic this$0:Lorg/telegram/messenger/video/Track;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/video/Track;IJ)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->this$0:Lorg/telegram/messenger/video/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I

    iput-wide p3, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J

    return-wide v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->index:I

    return v0
.end method

.method static synthetic access$200(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J

    return-wide v0
.end method

.method static synthetic access$202(Lorg/telegram/messenger/video/Track$SamplePresentationTime;J)J
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->dt:J

    return-wide p1
.end method
