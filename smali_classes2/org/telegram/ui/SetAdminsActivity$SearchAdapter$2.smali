.class Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;
.super Ljava/lang/Object;
.source "SetAdminsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->processSearch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iput-object p2, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->val$query:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;->this$1:Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;

    iget-object v1, v1, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter;->this$0:Lorg/telegram/ui/SetAdminsActivity;

    # getter for: Lorg/telegram/ui/SetAdminsActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/SetAdminsActivity;->access$1100(Lorg/telegram/ui/SetAdminsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lorg/telegram/messenger/Utilities;->searchQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;

    invoke-direct {v2, p0, v0}, Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2$1;-><init>(Lorg/telegram/ui/SetAdminsActivity$SearchAdapter$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
