.class Lorg/telegram/ui/GroupCreateActivity$4;
.super Lorg/telegram/ui/Components/EditTextBoldCursor;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/EditTextBoldCursor;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity;->access$1500(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/Components/GroupCreateSpan;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/GroupCreateSpan;->cancelDeleteAnimation()V

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$4;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/GroupCreateActivity;->currentDeletingSpan:Lorg/telegram/ui/Components/GroupCreateSpan;
    invoke-static {v0, v1}, Lorg/telegram/ui/GroupCreateActivity;->access$1502(Lorg/telegram/ui/GroupCreateActivity;Lorg/telegram/ui/Components/GroupCreateSpan;)Lorg/telegram/ui/Components/GroupCreateSpan;

    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/EditTextBoldCursor;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
