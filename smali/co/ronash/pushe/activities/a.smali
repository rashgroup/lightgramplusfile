.class Lco/ronash/pushe/activities/a;
.super Lco/ronash/pushe/task/a;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lco/ronash/pushe/activities/PopupDialogActivity;


# direct methods
.method constructor <init>(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iput-object p2, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {p0}, Lco/ronash/pushe/task/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 11

    new-instance v10, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "d_title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "d_content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "d_big_title"

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v2, "d_big_content"

    invoke-virtual {v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v4, "d_icon"

    invoke-virtual {v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v4, "d_big_icon"

    invoke-virtual {v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v7, "d_buttons"

    invoke-virtual {v0, v7}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v0

    if-nez v6, :cond_11

    if-nez v3, :cond_11

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "content"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v1, "big_title"

    invoke-virtual {v0, v1}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v2, "big_content"

    invoke-virtual {v0, v2}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v4, "icon"

    invoke-virtual {v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v4, "big_icon"

    invoke-virtual {v0, v4}, Lco/ronash/pushe/k/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v0

    const-string/jumbo v7, "buttons"

    invoke-virtual {v0, v7}, Lco/ronash/pushe/k/l;->f(Ljava/lang/String;)Lco/ronash/pushe/k/d;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v6

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    move v8, v6

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    move v7, v6

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_3
    if-eqz v8, :cond_5

    :goto_4
    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v7, :cond_6

    move-object v0, v2

    :goto_5
    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v6, :cond_7

    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ic_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[- ]"

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "drawable"

    iget-object v3, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    :goto_7
    const/4 v0, 0x0

    if-eqz v9, :cond_9

    new-instance v1, Lco/ronash/pushe/h/a/t;

    invoke-direct {v1}, Lco/ronash/pushe/h/a/t;-><init>()V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lco/ronash/pushe/h/a/t;->a(Lco/ronash/pushe/k/l;Lco/ronash/pushe/k/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :cond_1
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/ronash/pushe/h/a/q;

    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->a()Lco/ronash/pushe/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lco/ronash/pushe/a/a;->a()Lco/ronash/pushe/a/c;

    move-result-object v2

    sget-object v4, Lco/ronash/pushe/a/c;->d:Lco/ronash/pushe/a/c;

    if-eq v2, v4, :cond_1

    new-instance v4, Lco/ronash/pushe/activities/b;

    invoke-direct {v4, p0, p1, v0}, Lco/ronash/pushe/activities/b;-><init>(Lco/ronash/pushe/activities/a;Landroid/content/Context;Lco/ronash/pushe/h/a/q;)V

    add-int/lit8 v2, v1, 0x1

    packed-switch v1, :pswitch_data_0

    :goto_9
    move v1, v2

    goto :goto_8

    :cond_2
    const/4 v6, 0x0

    move v8, v6

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    move v7, v6

    goto/16 :goto_2

    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_4

    :cond_6
    move-object v0, v3

    goto/16 :goto_5

    :cond_7
    move-object v0, v5

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    goto :goto_7

    :pswitch_0
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :pswitch_1
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :pswitch_2
    invoke-virtual {v0}, Lco/ronash/pushe/h/a/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_9

    :cond_9
    move v1, v0

    :cond_a
    if-nez v1, :cond_b

    sget v0, Lco/ronash/pushe/R$string;->pushe_close_dialog:I

    new-instance v1, Lco/ronash/pushe/activities/c;

    invoke-direct {v1, p0, p1}, Lco/ronash/pushe/activities/c;-><init>(Lco/ronash/pushe/activities/a;Landroid/content/Context;)V

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_b
    new-instance v0, Lco/ronash/pushe/activities/d;

    invoke-direct {v0, p0}, Lco/ronash/pushe/activities/d;-><init>(Lco/ronash/pushe/activities/a;)V

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v1

    const-string/jumbo v2, "dialog_in1"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;)Lco/ronash/pushe/k/l;

    move-result-object v1

    const-string/jumbo v2, "dialog_in2"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lco/ronash/pushe/k/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->b(Lco/ronash/pushe/activities/PopupDialogActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v0}, Lco/ronash/pushe/activities/PopupDialogActivity;->e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_c
    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Z)Z

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_d

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->d(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->a(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->f(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_e
    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->e(Lco/ronash/pushe/activities/PopupDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    new-instance v3, Landroid/widget/EditText;

    iget-object v4, p0, Lco/ronash/pushe/activities/a;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->b(Lco/ronash/pushe/activities/PopupDialogActivity;Landroid/widget/EditText;)Landroid/widget/EditText;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v3}, Lco/ronash/pushe/activities/PopupDialogActivity;->g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v2}, Lco/ronash/pushe/activities/PopupDialogActivity;->g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setGravity(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    invoke-static {v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->g(Lco/ronash/pushe/activities/PopupDialogActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_f
    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_10
    iget-object v0, p0, Lco/ronash/pushe/activities/a;->b:Lco/ronash/pushe/activities/PopupDialogActivity;

    new-instance v1, Lco/ronash/pushe/activities/e;

    invoke-direct {v1, p0, v10}, Lco/ronash/pushe/activities/e;-><init>(Lco/ronash/pushe/activities/a;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v0, v1}, Lco/ronash/pushe/activities/PopupDialogActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_11
    move-object v9, v0

    move-object v0, v1

    move-object v1, v6

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
