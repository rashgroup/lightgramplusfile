.class Lorg/telegram/messenger/CContactsController$8$1$6$1;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController$8$1$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/messenger/CContactsController$8$1$6;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController$8$1$6;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$8$1$6$1;->this$3:Lorg/telegram/messenger/CContactsController$8$1$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/CContactsController$8$1$6$1;->this$3:Lorg/telegram/messenger/CContactsController$8$1$6;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8$1$6;->this$2:Lorg/telegram/messenger/CContactsController$8$1;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8$1;->this$1:Lorg/telegram/messenger/CContactsController$8;

    iget-object v0, v0, Lorg/telegram/messenger/CContactsController$8;->this$0:Lorg/telegram/messenger/CContactsController;

    iget-object v1, p0, Lorg/telegram/messenger/CContactsController$8$1$6$1;->this$3:Lorg/telegram/messenger/CContactsController$8$1$6;

    iget-object v1, v1, Lorg/telegram/messenger/CContactsController$8$1$6;->val$contactsByPhonesDictFinal:Ljava/util/HashMap;

    iput-object v1, v0, Lorg/telegram/messenger/CContactsController;->contactsByPhone:Ljava/util/HashMap;

    return-void
.end method
