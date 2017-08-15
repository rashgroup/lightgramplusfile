.class Lorg/telegram/ui/tools/f/c$c;
.super Ljava/lang/Object;
.source "SpecialContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/tools/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final a:Landroid/content/SharedPreferences;

.field final synthetic b:Lorg/telegram/ui/tools/f/c;


# direct methods
.method constructor <init>(Lorg/telegram/ui/tools/f/c;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/tools/f/c$c;->b:Lorg/telegram/ui/tools/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/tools/f/c$c;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$c;->b:Lorg/telegram/ui/tools/f/c;

    invoke-static {v0}, Lorg/telegram/ui/tools/f/c;->a(Lorg/telegram/ui/tools/f/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$c;->a:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "specific_contact_service"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v0, p0, Lorg/telegram/ui/tools/f/c$c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "specific_contact_service"

    if-eqz v3, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v4, v5, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    instance-of v0, p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
