.class Lorg/telegram/ui/DialogsActivity$16$3$3;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity$16$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivity$16$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity$16$3;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity$16$3;->val$isChat:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16$3;->this$1:Lorg/telegram/ui/DialogsActivity$16;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isNotInChat(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16$3;->this$1:Lorg/telegram/ui/DialogsActivity$16;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-boolean v0, v0, Lorg/telegram/ui/DialogsActivity$16$3;->val$isBot:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16$3;->this$1:Lorg/telegram/ui/DialogsActivity$16;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->blockUser(I)V

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$16$3;->this$1:Lorg/telegram/ui/DialogsActivity$16;

    iget-object v3, v3, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v3}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16$3;->this$1:Lorg/telegram/ui/DialogsActivity$16;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    neg-long v2, v2

    long-to-int v1, v2

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->deleteUserFromChat(ILorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$ChatFull;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivity$16$3$3;->this$2:Lorg/telegram/ui/DialogsActivity$16$3;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16$3;->this$1:Lorg/telegram/ui/DialogsActivity$16;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivity$16;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivity;->access$3900(Lorg/telegram/ui/DialogsActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v6}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    goto :goto_0
.end method
