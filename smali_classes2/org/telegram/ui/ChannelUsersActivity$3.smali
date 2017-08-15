.class Lorg/telegram/ui/ChannelUsersActivity$3;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-lt p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    add-int/2addr v0, v4

    if-ge p2, v0, :cond_6

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$700(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v4}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    move-object v4, v0

    :goto_1
    if-eqz v4, :cond_4

    iget v0, v4, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    if-ne v0, v5, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChannelUsersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v5, v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "Unblock"

    const v6, 0x7f080541

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :goto_2
    new-instance v1, Lorg/telegram/ui/ChannelUsersActivity$3$1;

    invoke-direct {v1, p0, v4}, Lorg/telegram/ui/ChannelUsersActivity$3$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$3;Lorg/telegram/tgnet/TLRPC$ChannelParticipant;)V

    invoke-virtual {v5, v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v5}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChannelUsersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    if-ne v0, v3, :cond_3

    new-array v0, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "ChannelRemoveUserAdmin"

    const v6, 0x7f080148

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/ChannelUsersActivity$3;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v0}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    new-array v0, v3, [Ljava/lang/CharSequence;

    const-string/jumbo v1, "ChannelRemoveUser"

    const v6, 0x7f080147

    invoke-static {v1, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :cond_6
    move-object v4, v1

    goto :goto_1
.end method
