.class Lorg/telegram/ui/Components/ChatActivityEnterView$C16458;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C16458"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

.field final val$chA:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$C16458;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$C16458;->val$chA:Lorg/telegram/ui/ChatActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$C16458;->val$chA:Lorg/telegram/ui/ChatActivity;

    new-instance v1, Lorg/telegram/ui/tools/e/a;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$C16458;->val$chA:Lorg/telegram/ui/ChatActivity;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$C16458;->val$chA:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v4

    invoke-direct {v1, v2, v4, v5}, Lorg/telegram/ui/tools/e/a;-><init>(Lorg/telegram/ui/ChatActivity;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
