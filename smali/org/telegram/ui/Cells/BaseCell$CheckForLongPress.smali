.class Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;
.super Ljava/lang/Object;
.source "BaseCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Cells/BaseCell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field public currentPressCount:I

.field final synthetic this$0:Lorg/telegram/ui/Cells/BaseCell;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Cells/BaseCell;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v2, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    # getter for: Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z
    invoke-static {v2}, Lorg/telegram/ui/Cells/BaseCell;->access$200(Lorg/telegram/ui/Cells/BaseCell;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->currentPressCount:I

    iget-object v3, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    # getter for: Lorg/telegram/ui/Cells/BaseCell;->pressCount:I
    invoke-static {v3}, Lorg/telegram/ui/Cells/BaseCell;->access$100(Lorg/telegram/ui/Cells/BaseCell;)I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    # setter for: Lorg/telegram/ui/Cells/BaseCell;->checkingForLongPress:Z
    invoke-static {v2, v7}, Lorg/telegram/ui/Cells/BaseCell;->access$202(Lorg/telegram/ui/Cells/BaseCell;Z)Z

    iget-object v2, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v2, v7}, Lorg/telegram/ui/Cells/BaseCell;->performHapticFeedback(I)Z

    iget-object v2, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v2}, Lorg/telegram/ui/Cells/BaseCell;->onLongPress()V

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/BaseCell$CheckForLongPress;->this$0:Lorg/telegram/ui/Cells/BaseCell;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_0
    return-void
.end method
