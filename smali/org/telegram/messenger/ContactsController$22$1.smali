.class Lorg/telegram/messenger/ContactsController$22$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$22;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$22;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$22;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$22$1;->this$1:Lorg/telegram/messenger/ContactsController$22;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$22$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$22$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$22$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$22$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->users:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$22$1;->this$1:Lorg/telegram/messenger/ContactsController$22;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$22;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_account_privacyRules;->rules:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/messenger/ContactsController;->callPrivacyRules:Ljava/util/ArrayList;
    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->access$2202(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$22$1;->this$1:Lorg/telegram/messenger/ContactsController$22;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$22;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x2

    # setter for: Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$2302(Lorg/telegram/messenger/ContactsController;I)I

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$22$1;->this$1:Lorg/telegram/messenger/ContactsController$22;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$22;->this$0:Lorg/telegram/messenger/ContactsController;

    # setter for: Lorg/telegram/messenger/ContactsController;->loadingCallsInfo:I
    invoke-static {v0, v3}, Lorg/telegram/messenger/ContactsController;->access$2302(Lorg/telegram/messenger/ContactsController;I)I

    goto :goto_0
.end method
