.class Lorg/telegram/ui/ChatActivity$46;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->dialog_id:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$100(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v2

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->mergeDialogId:J
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$3800(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$46;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->classGuid:I
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$12600(Lorg/telegram/ui/ChatActivity;)I

    move-result v6

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Lorg/telegram/messenger/query/MessagesSearchQuery;->searchMessagesInChat(Ljava/lang/String;JJII)V

    return-void
.end method
