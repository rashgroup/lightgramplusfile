.class Lorg/telegram/ui/Components/ChatActivityEnterView$7;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;-><init>(Landroid/app/Activity;Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Lorg/telegram/ui/ChatActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field ctrlPressed:Z

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->ctrlPressed:Z

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    :goto_0
    return v1

    :cond_0
    if-eqz p3, :cond_5

    if-nez p2, :cond_5

    iget-boolean v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->ctrlPressed:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendByEnter:Z
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2800(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->editingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$2900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # invokes: Lorg/telegram/ui/Components/ChatActivityEnterView;->sendMessage()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3000(Lorg/telegram/ui/Components/ChatActivityEnterView;)V

    goto :goto_0

    :cond_2
    const/16 v2, 0x71

    if-eq p2, v2, :cond_3

    const/16 v2, 0x72

    if-ne p2, v2, :cond_5

    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$7;->ctrlPressed:Z

    goto :goto_0

    :cond_5
    move v1, v0

    goto :goto_0
.end method
