.class Lorg/telegram/ui/Components/EmojiView$9;
.super Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;
.source "EmojiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    move-result-object v0

    # getter for: Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->cache:Ljava/util/HashMap;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->access$3400(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    move-result-object v0

    # getter for: Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->totalItems:I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->access$3500(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->trendingGridAdapter:Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView;->access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;

    move-result-object v0

    # getter for: Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->stickersPerRow:I
    invoke-static {v0}, Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;->access$3600(Lorg/telegram/ui/Components/EmojiView$TrendingGridAdapter;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
