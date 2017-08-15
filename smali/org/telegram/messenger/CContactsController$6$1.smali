.class Lorg/telegram/messenger/CContactsController$6$1;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController$6;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v1, v5

    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v7, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/CContactsController;->deleteContact(Ljava/util/ArrayList;)V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$6$1;->this$1:Lorg/telegram/messenger/CContactsController$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$6;->val$contactHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v5

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/CContactsController$Contact;

    move v2, v5

    move v3, v5

    :goto_3
    iget-object v1, v0, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_5

    iget-object v1, v0, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v1, :cond_8

    const/4 v3, 0x1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v2, -0x1

    move v2, v3

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v1

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$Contact;->shortPhones:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    add-int/lit8 v0, v4, 0x1

    :goto_5
    move v4, v0

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_5

    :cond_8
    move v1, v2

    move v2, v3

    goto :goto_4
.end method
