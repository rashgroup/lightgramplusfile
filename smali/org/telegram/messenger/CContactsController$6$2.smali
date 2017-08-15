.class Lorg/telegram/messenger/CContactsController$6$2;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/CContactsController$6;

.field final synthetic val$contactsBookShort:Ljava/util/HashMap;

.field final synthetic val$contactsMap:Ljava/util/HashMap;

.field final synthetic val$contactsMapToSave:Ljava/util/HashMap;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController$6;Ljava/util/HashMap;ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$6$2;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    iput p3, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$count:I

    iput-object p4, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$contactsBookShort:Ljava/util/HashMap;

    iput-object p5, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$contactsMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$2;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    # operator++ for: Lorg/telegram/messenger/CContactsController;->completedRequestsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$008(Lorg/telegram/messenger/CContactsController;)I

    if-nez p2, :cond_3

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->retry_contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$2;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->completedRequestsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$000(Lorg/telegram/messenger/CContactsController;)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$count:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$contactsMapToSave:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->putCachedPhoneBook2(Ljava/util/HashMap;)V

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v6, v6}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->imported:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_importedContact;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_importedContact;->user_id:I

    iput v0, v3, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$2;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/CContactsController;->processLoadedContacts2(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$2;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    # getter for: Lorg/telegram/messenger/CContactsController;->completedRequestsCount:I
    invoke-static {v0}, Lorg/telegram/messenger/CContactsController;->access$000(Lorg/telegram/messenger/CContactsController;)I

    move-result v0

    iget v1, p0, Lorg/telegram/messenger/CContactsController$6$2;->val$count:I

    if-ne v0, v1, :cond_4

    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/CContactsController$6$2$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/CContactsController$6$2$1;-><init>(Lorg/telegram/messenger/CContactsController$6$2;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method
