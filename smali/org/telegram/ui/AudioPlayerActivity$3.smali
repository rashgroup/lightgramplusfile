.class Lorg/telegram/ui/AudioPlayerActivity$3;
.super Landroid/widget/FrameLayout;
.source "AudioPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/AudioPlayerActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/AudioPlayerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/AudioPlayerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    sub-int v0, p4, p2

    const/high16 v1, 0x43870000    # 270.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x4

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x30

    add-int/lit8 v2, v2, 0xf

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    mul-int v3, v1, v0

    add-int/2addr v2, v3

    const/high16 v3, 0x41100000    # 9.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    iget-object v4, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    # getter for: Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;
    invoke-static {v4}, Lorg/telegram/ui/AudioPlayerActivity;->access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;

    move-result-object v4

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    # getter for: Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;
    invoke-static {v5}, Lorg/telegram/ui/AudioPlayerActivity;->access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/telegram/ui/AudioPlayerActivity$3;->this$0:Lorg/telegram/ui/AudioPlayerActivity;

    # getter for: Lorg/telegram/ui/AudioPlayerActivity;->buttons:[Landroid/widget/ImageView;
    invoke-static {v6}, Lorg/telegram/ui/AudioPlayerActivity;->access$100(Lorg/telegram/ui/AudioPlayerActivity;)[Landroid/widget/ImageView;

    move-result-object v6

    aget-object v6, v6, v0

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
