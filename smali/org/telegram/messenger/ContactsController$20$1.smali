.class Lorg/telegram/messenger/ContactsController$20$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$20;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$20;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$20;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$20$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController$20;->this$0:Lorg/telegram/messenger/ContactsController;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_accountDaysTTL;->days:I

    # setter for: Lorg/telegram/messenger/ContactsController;->deleteAccountTTL:I
    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->access$1802(Lorg/telegram/messenger/ContactsController;I)I

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$20;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x2

    # setter for: Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/ContactsController;->access$1902(Lorg/telegram/messenger/ContactsController;I)I

    :goto_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->privacyRulesUpdated:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$20$1;->this$1:Lorg/telegram/messenger/ContactsController$20;

    iget-object v0, v0, Lorg/telegram/messenger/ContactsController$20;->this$0:Lorg/telegram/messenger/ContactsController;

    # setter for: Lorg/telegram/messenger/ContactsController;->loadingDeleteInfo:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/ContactsController;->access$1902(Lorg/telegram/messenger/ContactsController;I)I

    goto :goto_0
.end method
