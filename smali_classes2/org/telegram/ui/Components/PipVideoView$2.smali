.class Lorg/telegram/ui/Components/PipVideoView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PipVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PipVideoView;->animateToBoundsMaybe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PipVideoView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PipVideoView;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/PipVideoView$2;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/Components/PipVideoView$2;->this$0:Lorg/telegram/ui/Components/PipVideoView;

    # getter for: Lorg/telegram/ui/Components/PipVideoView;->parentSheet:Lorg/telegram/ui/Components/EmbedBottomSheet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PipVideoView;->access$600(Lorg/telegram/ui/Components/PipVideoView;)Lorg/telegram/ui/Components/EmbedBottomSheet;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmbedBottomSheet;->destroy()V

    return-void
.end method
