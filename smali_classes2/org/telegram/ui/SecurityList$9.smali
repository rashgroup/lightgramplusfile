.class Lorg/telegram/ui/SecurityList$9;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SecurityList;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$9;->this$0:Lorg/telegram/ui/SecurityList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "destroyAfterSelect"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$9;->this$0:Lorg/telegram/ui/SecurityList;

    new-instance v2, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/SecurityList;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    return-void
.end method
