.class Lorg/telegram/ui/tools/f/c$e;
.super Ljava/lang/Object;
.source "SpecialContactsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/tools/f/c$e$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field final synthetic b:Lorg/telegram/ui/tools/f/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/c;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/c$e;->b:Lorg/telegram/ui/tools/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/tools/f/c$e;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v5, 0x1

    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/c$e;->b:Lorg/telegram/ui/tools/f/c;

    invoke-virtual {v1}, Lorg/telegram/ui/tools/f/c;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    new-array v1, v5, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "Delete"

    const v4, 0x7f0801bb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Lorg/telegram/ui/tools/f/c$e$a;

    invoke-direct {v2, p0, p3}, Lorg/telegram/ui/tools/f/c$e$a;-><init>(Lorg/telegram/ui/tools/f/c$e;I)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    iget-object v1, p0, Lorg/telegram/ui/tools/f/c$e;->b:Lorg/telegram/ui/tools/f/c;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/tools/f/c;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    return v5
.end method
