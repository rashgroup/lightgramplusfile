.class Lorg/telegram/messenger/video/Track$1;
.super Ljava/lang/Object;
.source "Track.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/video/Track;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/messenger/video/Track$SamplePresentationTime;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/video/Track;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/video/Track;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/video/Track$1;->this$0:Lorg/telegram/messenger/video/Track;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    check-cast p2, Lorg/telegram/messenger/video/Track$SamplePresentationTime;

    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/video/Track$1;->compare(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/messenger/video/Track$SamplePresentationTime;Lorg/telegram/messenger/video/Track$SamplePresentationTime;)I
    .locals 4

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {p2}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {p1}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v0

    # getter for: Lorg/telegram/messenger/video/Track$SamplePresentationTime;->presentationTime:J
    invoke-static {p2}, Lorg/telegram/messenger/video/Track$SamplePresentationTime;->access$000(Lorg/telegram/messenger/video/Track$SamplePresentationTime;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
