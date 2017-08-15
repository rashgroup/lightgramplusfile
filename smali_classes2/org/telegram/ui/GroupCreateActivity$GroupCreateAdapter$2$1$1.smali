.class Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;
.super Ljava/lang/Object;
.source "GroupCreateActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->val$query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    # invokes: Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v1, v2}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2800(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v5, v0

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    # getter for: Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2900(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    # getter for: Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->contacts:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2900(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v2

    invoke-virtual {v2, v8}, Lorg/telegram/messenger/LocaleController;->getTranslitString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    :cond_3
    const/4 v4, 0x0

    array-length v9, v5

    const/4 v3, 0x0

    move v13, v3

    move v3, v4

    move v4, v13

    :goto_4
    if-ge v4, v9, :cond_6

    aget-object v10, v5, v4

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz v2, :cond_8

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_5
    if-eqz v3, :cond_a

    const/4 v2, 0x1

    if-ne v3, v2, :cond_9

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v2, v3, v10}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_8
    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    if-eqz v11, :cond_5

    iget-object v11, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v3, 0x2

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$User;->username:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "@"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/AndroidUtilities;->generateSearchName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1$1;->this$3:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2$1;->this$2:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;

    iget-object v0, v0, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter$2;->this$1:Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;

    # invokes: Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v6, v7}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;->access$2800(Lorg/telegram/ui/GroupCreateActivity$GroupCreateAdapter;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_c
    move-object v1, v0

    goto/16 :goto_1
.end method
