.class Lorg/telegram/ui/Adapters/SearchAdapter1$2;
.super Ljava/lang/Object;
.source "SearchAdapter1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/SearchAdapter1;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/SearchAdapter1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter1;->allowUsernameSearch:Z
    invoke-static {v0}, Lorg/telegram/ui/Adapters/SearchAdapter1;->access$200(Lorg/telegram/ui/Adapters/SearchAdapter1;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->val$query:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter1;->allowChats:Z
    invoke-static {v2}, Lorg/telegram/ui/Adapters/SearchAdapter1;->access$300(Lorg/telegram/ui/Adapters/SearchAdapter1;)Z

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Adapters/SearchAdapter1$2;->this$0:Lorg/telegram/ui/Adapters/SearchAdapter1;

    # getter for: Lorg/telegram/ui/Adapters/SearchAdapter1;->allowBots:Z
    invoke-static {v3}, Lorg/telegram/ui/Adapters/SearchAdapter1;->access$400(Lorg/telegram/ui/Adapters/SearchAdapter1;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Adapters/SearchAdapter1;->queryServerSearch(Ljava/lang/String;ZZ)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/ContactsController;->getInstance()Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    iget-object v1, v1, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/Adapters/SearchAdapter1$2$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/Adapters/SearchAdapter1$2$1;-><init>(Lorg/telegram/ui/Adapters/SearchAdapter1$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
