.class Lorg/telegram/messenger/ContactsController$7;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController;->loadContacts(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/ContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    const/4 v2, 0x0

    if-nez p2, :cond_1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_contactsNotModified;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/ContactsController;->contactsLoaded:Z

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->contactsBookLoaded:Z
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$700(Lorg/telegram/messenger/ContactsController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lorg/telegram/messenger/ContactsController;->applyContactsUpdates(Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2, v2, v2}, Lorg/telegram/messenger/ContactsController;->access$900(Lorg/telegram/messenger/ContactsController;Ljava/util/ArrayList;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    # getter for: Lorg/telegram/messenger/ContactsController;->delayedContactsUpdate:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/ContactsController;->access$800(Lorg/telegram/messenger/ContactsController;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    new-instance v0, Lorg/telegram/messenger/ContactsController$7$1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/ContactsController$7$1;-><init>(Lorg/telegram/messenger/ContactsController$7;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const-string/jumbo v0, "load contacts don\'t change"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ContactsController$7;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->contacts:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$contacts_Contacts;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/ContactsController;->processLoadedContacts(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_0
.end method
